.class Landroidx/leanback/widget/ArrayObjectAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ArrayObjectAdapter.java"


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

.field final synthetic val$callback:Landroidx/leanback/widget/DiffCallback;

.field final synthetic val$itemList:Ljava/util/List;


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    .line 270
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    .line 271
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 270
    invoke-virtual {v0, p1, p0}, Landroidx/leanback/widget/DiffCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 264
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    .line 265
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 264
    invoke-virtual {v0, p1, p0}, Landroidx/leanback/widget/DiffCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 277
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$callback:Landroidx/leanback/widget/DiffCallback;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    .line 278
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 277
    invoke-virtual {v0, p1, p0}, Landroidx/leanback/widget/DiffCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNewListSize()I
    .locals 0

    .line 259
    iget-object p0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->val$itemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    .line 254
    iget-object p0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$1;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object p0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
