.class Landroid/app/enterprise/EnterpriseVpnConnectionBase$1;
.super Ljava/lang/Object;
.source "EnterpriseVpnConnectionBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/EnterpriseVpnConnectionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/EnterpriseVpnConnectionBase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/EnterpriseVpnConnectionBase;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Landroid/app/enterprise/EnterpriseVpnConnectionBase$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/EnterpriseVpnConnectionBase;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/EnterpriseVpnConnectionBase;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Landroid/app/enterprise/EnterpriseVpnConnectionBase$1;->newArray(I)[Landroid/app/enterprise/EnterpriseVpnConnectionBase;

    move-result-object p0

    return-object p0
.end method
