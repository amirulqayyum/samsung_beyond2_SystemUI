.class public Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;
.super Ljava/lang/Object;
.source "SystemUIUtilFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/UtilFactory;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field private mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    .line 20
    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 22
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p3, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-virtual {p1, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p3, v0, v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p3, v0, v1}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/android/systemui/globalactions/util/KioskModeWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    new-instance p3, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/android/systemui/globalactions/util/StatusBarWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class p2, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    new-instance p3, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p3, v0, p0}, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
