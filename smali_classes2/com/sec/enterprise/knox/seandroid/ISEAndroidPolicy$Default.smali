.class public Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Default;
.super Ljava/lang/Object;
.source "ISEAndroidPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;
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
