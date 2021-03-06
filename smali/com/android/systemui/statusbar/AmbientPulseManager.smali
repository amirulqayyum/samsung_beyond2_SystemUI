.class public Lcom/android/systemui/statusbar/AmbientPulseManager;
.super Lcom/android/systemui/statusbar/AlertingNotificationManager;
.source "AmbientPulseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;,
        Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected mExtensionTime:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager;->mListeners:Landroid/util/ArraySet;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 49
    sget v0, Lcom/android/systemui/R$integer;->ambient_notification_decay:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAutoDismissNotificationDecay:I

    .line 50
    sget v0, Lcom/android/systemui/R$integer;->ambient_notification_minimum_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mMinimumDisplayTime:I

    .line 51
    sget v0, Lcom/android/systemui/R$integer;->ambient_notification_extension_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager;->mExtensionTime:J

    return-void
.end method

.method private getTopEntry()Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 122
    :cond_3
    check-cast v1, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createAlertEntry()Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
    .locals 2

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;-><init>(Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/AmbientPulseManager$1;)V

    return-object v0
.end method

.method public extendPulse()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AmbientPulseManager;->getTopEntry()Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;->access$000(Lcom/android/systemui/statusbar/AmbientPulseManager$AmbientEntry;)V

    return-void
.end method

.method public getContentFlag()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected onAlertEntryAdded(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
    .locals 2

    .line 86
    iget-object p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAmbientPulsing(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;

    .line 89
    invoke-interface {v1, p1, v0}, Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;->onAmbientStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
    .locals 2

    .line 95
    iget-object p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAmbientPulsing(Z)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/AmbientPulseManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;

    .line 98
    invoke-interface {v1, p1, v0}, Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;->onAmbientStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->freeContentViewWhenSafe(I)V

    return-void
.end method
