.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

.field final synthetic val$cachedContentViews:Landroid/util/ArrayMap;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$redactAmbient:Z

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;ZLandroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$isNewView:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$inflationId:I

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iput p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$reInflateFlags:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$cachedContentViews:Landroid/util/ArrayMap;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    iput-boolean p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$redactAmbient:Z

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$existingView:Landroid/view/View;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$newContentView:Landroid/widget/RemoteViews;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$existingView:Landroid/view/View;

    .line 646
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$isNewView:Z

    if-eqz v1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$existingView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :goto_0
    const-string v1, "NotifContentInflater"

    const-string v2, "Async Inflation failed but normal inflation finished normally."

    .line 657
    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->onViewApplied(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 661
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    invoke-static {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1500(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)V

    :goto_1
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 10

    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$isNewView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p1, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    .line 628
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$inflationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$reInflateFlags:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$cachedContentViews:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$runningInflations:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$redactAmbient:Z

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V

    :cond_2
    return-void
.end method

.method public onViewInflated(Landroid/view/View;)V
    .locals 1

    .line 615
    instance-of v0, p1, Lcom/android/internal/widget/ImageMessageConsumer;

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Lcom/android/internal/widget/ImageMessageConsumer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$6;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/widget/ImageMessageConsumer;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    :cond_0
    return-void
.end method
