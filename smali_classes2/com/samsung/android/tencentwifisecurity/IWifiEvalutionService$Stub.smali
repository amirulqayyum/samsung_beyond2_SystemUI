.class public abstract Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub;
.super Landroid/os/Binder;
.source "IWifiEvalutionService.java"

# interfaces
.implements Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    .line 34
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;
    .locals 1

    .line 206
    sget-object v0, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.tencentwifisecurity.IWifiEvalutionService"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 62
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 90
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    move-result-object p1

    .line 93
    invoke-interface {p0, p1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->unregisterEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;

    move-result-object p1

    .line 84
    invoke-interface {p0, p1}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->registerEvalutionCallback(Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionCallback;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 74
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-interface {p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->stopSecurityEvalution()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 67
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Lcom/samsung/android/tencentwifisecurity/IWifiEvalutionService;->startSecurityEvalution()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
