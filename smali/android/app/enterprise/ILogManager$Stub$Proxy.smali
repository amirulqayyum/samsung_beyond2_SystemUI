.class Landroid/app/enterprise/ILogManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILogManager.java"

# interfaces
.implements Landroid/app/enterprise/ILogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/ILogManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/app/enterprise/ILogManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
