.class public Landroidx/slice/widget/GridContent;
.super Landroidx/slice/widget/SliceContent;
.source "GridContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/GridContent$CellContent;
    }
.end annotation


# instance fields
.field private mAllImages:Z

.field private mGridContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation
.end field

.field private mHasImage:Z

.field private mIsLastIndex:Z

.field private mLargestImageMode:I

.field private mMaxCellLineCount:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 61
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    const/4 p2, 0x3

    .line 65
    iput p2, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 72
    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent;->populate(Landroidx/slice/SliceItem;)Z

    return-void
.end method

.method private filterAndProcessItems(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 188
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 189
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    const-string v4, "see_more"

    const/4 v5, 0x0

    .line 191
    invoke-static {v3, v5, v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-nez v5, :cond_2

    const-string/jumbo v5, "shortcut"

    const-string v7, "keywords"

    const-string/jumbo v8, "ttl"

    const-string v9, "last_updated"

    .line 192
    filled-new-array {v5, v4, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    .line 195
    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    iput-object v3, p0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    .line 198
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private populate(Landroidx/slice/SliceItem;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "see_more"

    .line 79
    invoke-static {p1, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 80
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    const-string/jumbo v2, "slice"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    :cond_0
    const-string/jumbo v0, "shortcut"

    const-string/jumbo v3, "title"

    .line 86
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "actions"

    .line 87
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 90
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent;->filterAndProcessItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    .line 95
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content_description"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v2, v0}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 97
    invoke-direct {p0, v2}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v0, p1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 102
    invoke-direct {p0, v0}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 104
    :cond_3
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result p0

    return p0
.end method

.method private processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 112
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isImageOnly()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 116
    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTextCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 117
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->hasImage()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    .line 118
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 119
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result p1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 150
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getGridContent()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 0

    .line 232
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0
.end method

.method public getIsLastIndex()Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    return p0
.end method

.method public getLargestImageMode()I
    .locals 0

    .line 180
    iget p0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    return p0
.end method

.method public getMaxCellLineCount()I
    .locals 0

    .line 208
    iget p0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    return p0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 158
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public hasImage()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    return p0
.end method

.method public isAllImages()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 166
    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIsLastIndex(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    return-void
.end method
