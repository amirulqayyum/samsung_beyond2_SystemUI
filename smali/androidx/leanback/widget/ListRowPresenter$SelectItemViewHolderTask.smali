.class public Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;
.super Landroidx/leanback/widget/Presenter$ViewHolderTask;
.source "ListRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ListRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectItemViewHolderTask"
.end annotation


# instance fields
.field private mItemPosition:I

.field mItemTask:Landroidx/leanback/widget/Presenter$ViewHolderTask;

.field private mSmoothScroll:Z


# virtual methods
.method public isSmoothScroll()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mSmoothScroll:Z

    return p0
.end method

.method public run(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 208
    instance-of v0, p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_2

    .line 209
    check-cast p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object p1

    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemTask:Landroidx/leanback/widget/Presenter$ViewHolderTask;

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask$1;-><init>(Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->isSmoothScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget p0, p0, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {p1, p0, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(ILandroidx/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 224
    :cond_1
    iget p0, p0, Landroidx/leanback/widget/ListRowPresenter$SelectItemViewHolderTask;->mItemPosition:I

    invoke-virtual {p1, p0, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    :cond_2
    :goto_0
    return-void
.end method
