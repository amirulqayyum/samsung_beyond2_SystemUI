.class public Lcom/android/systemui/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleData$TimeSource;,
        Lcom/android/systemui/bubbles/BubbleData$Listener;,
        Lcom/android/systemui/bubbles/BubbleData$Update;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

.field private mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

.field private mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;

    .line 60
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 62
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;

    .line 63
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 130
    new-instance p1, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private dispatchPendingChanges()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V

    .line 330
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4

    .line 230
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithGroupId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 235
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 242
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_3
    return-void
.end method

.method private doRemove(Ljava/lang/String;I)V
    .locals 5

    .line 277
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 301
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 302
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 304
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->setDismissed()V

    .line 305
    iget-object p1, v0, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private doUpdate(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    .line 270
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method private findFirstIndexForGroup(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 451
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    .line 453
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hasBubbleWithGroupId(Ljava/lang/String;)Z
    .locals 1

    .line 447
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 576
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 578
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private insertBubble(ILcom/android/systemui/bubbles/Bubble;)I
    .locals 5

    .line 427
    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 430
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 431
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 432
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 435
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 437
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-object v2, v4

    goto :goto_0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic lambda$hasBubbleWithGroupId$2(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 447
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$repackAll$3(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 525
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vPZCImnk7rTPTX1c7nr0PX7FO2o(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 539
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 547
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send delete intent for bubble with key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleData"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private packGroup(I)Z
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 473
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-le v2, p1, :cond_1

    .line 478
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 486
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    add-int/2addr p1, v3

    invoke-interface {p0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return v3
.end method

.method private repackAll()Z
    .locals 8

    .line 501
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 504
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 505
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 506
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 507
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    .line 509
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 516
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    .line 517
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 518
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 524
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;

    invoke-direct {v5, v3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 526
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;

    invoke-direct {v4, v2}, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;-><init>(Ljava/util/List;)V

    .line 527
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .locals 3

    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "BubbleData"

    if-eqz v0, :cond_1

    const-string p0, "Attempt to expand stack when empty!"

    .line 372
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_2

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 376
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 384
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 387
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 399
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    .line 403
    :cond_5
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    .line 404
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    const/4 p1, 0x1

    .line 405
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2
    .param p1    # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 342
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleData"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 353
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 354
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 p1, 0x1

    .line 355
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 4

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getLastUpdateTime()J

    move-result-wide v0

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    or-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private trim()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    .line 250
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 252
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissAll(I)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 316
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 319
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->setDismissed()V

    .line 320
    iget-object v2, v1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 595
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 597
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBubbles()Z
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method public synthetic lambda$trim$0$BubbleData(Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$trim$1$BubbleData(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 254
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    return-void
.end method

.method public notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 196
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public notificationEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 170
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$zesn1_xjTP9VJj3ngsaJURNhUiY;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$zesn1_xjTP9VJj3ngsaJURNhUiY;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/bubbles/Bubble;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;)V

    .line 174
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doAdd(Lcom/android/systemui/bubbles/Bubble;)V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->trim()V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doUpdate(Lcom/android/systemui/bubbles/Bubble;)V

    .line 181
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->shouldAutoExpand(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 183
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    goto :goto_1

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez p1, :cond_2

    .line 187
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 189
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public notificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 214
    aget-object v2, v0, v1

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 217
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    .line 218
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setTimeSource(Lcom/android/systemui/bubbles/BubbleData$TimeSource;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 606
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    return-void
.end method

.method shouldAutoExpand(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 614
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 616
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
