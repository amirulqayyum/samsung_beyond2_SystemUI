.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation build Landroid/annotation/UnsupportedAppUsage;
    implicitMember = "values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

.field public static final enum IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const/4 v1, 0x0

    const-string v2, "IPV4"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 39
    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const/4 v2, 0x1

    const-string v3, "IPV6"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 35
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 1

    .line 35
    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object v0
.end method
