.class public Lcom/samsung/android/knox/multiuser/IMultiUserManager$Default;
.super Ljava/lang/Object;
.source "IMultiUserManager.java"

# interfaces
.implements Lcom/samsung/android/knox/multiuser/IMultiUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/multiuser/IMultiUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method