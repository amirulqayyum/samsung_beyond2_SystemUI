.class public Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;
.super Ljava/lang/Object;
.source "BackGestureSensitivityInteractor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/Interactor;


# instance fields
.field mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 0

    .line 19
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getBackGestureSensitivityType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    .line 17
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 19
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$BackGestureSensitivityInteractor$vRZrgzeDVE7SbTAdvMfkeDg6lqU;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$BackGestureSensitivityInteractor$vRZrgzeDVE7SbTAdvMfkeDg6lqU;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 20
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "navigation_bar_back_gesture_sensitivity"

    .line 21
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 22
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getBackGestureSensitivityType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
