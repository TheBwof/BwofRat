.class public final Lkotlin/ranges/CharProgressionIterator;
.super Lkotlin/collections/CharIterator;
.source "ProgressionIterators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/ranges/CharProgressionIterator;",
        "Lkotlin/collections/CharIterator;",
        "first",
        "",
        "last",
        "step",
        "",
        "(CCI)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()I",
        "nextChar",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private final finalElement:I

.field private hasNext:Z

.field private next:I

.field private final step:I


# direct methods
.method public constructor <init>(CCI)V
    .locals 7

    .prologue
    .line 14
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Lkotlin/collections/CharIterator;-><init>()V

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkotlin/ranges/CharProgressionIterator;->step:I

    .line 15
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lkotlin/ranges/CharProgressionIterator;->finalElement:I

    .line 16
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lkotlin/ranges/CharProgressionIterator;->step:I

    if-lez v5, :cond_1

    move v5, v1

    move v6, v2

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    .line 17
    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    if-eqz v5, :cond_3

    move v5, v1

    :goto_1
    iput v5, v4, Lkotlin/ranges/CharProgressionIterator;->next:I

    return-void

    .line 16
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, v1

    move v6, v2

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 17
    :cond_3
    move-object v5, v0

    iget v5, v5, Lkotlin/ranges/CharProgressionIterator;->finalElement:I

    goto :goto_1
.end method


# virtual methods
.method public final getStep()I
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/ranges/CharProgressionIterator;->step:I

    move v0, v1

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    move v0, v1

    return v0
.end method

.method public nextChar()C
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lkotlin/ranges/CharProgressionIterator;->next:I

    move v1, v2

    .line 23
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lkotlin/ranges/CharProgressionIterator;->finalElement:I

    if-ne v2, v3, :cond_1

    .line 24
    move-object v2, v0

    iget-boolean v2, v2, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 25
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lkotlin/ranges/CharProgressionIterator;->hasNext:Z

    .line 29
    :goto_0
    move v2, v1

    int-to-char v2, v2

    move v0, v2

    return v0

    .line 28
    :cond_1
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lkotlin/ranges/CharProgressionIterator;->next:I

    move-object v4, v0

    iget v4, v4, Lkotlin/ranges/CharProgressionIterator;->step:I

    add-int/2addr v3, v4

    iput v3, v2, Lkotlin/ranges/CharProgressionIterator;->next:I

    goto :goto_0
.end method
