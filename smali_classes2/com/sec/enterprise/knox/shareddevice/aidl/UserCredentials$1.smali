.class Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials$1;
.super Ljava/lang/Object;
.source "UserCredentials.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;
    .locals 2

    .line 57
    new-instance p0, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;
    .locals 0

    .line 62
    new-array p0, p1, [Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials$1;->newArray(I)[Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    move-result-object p0

    return-object p0
.end method
