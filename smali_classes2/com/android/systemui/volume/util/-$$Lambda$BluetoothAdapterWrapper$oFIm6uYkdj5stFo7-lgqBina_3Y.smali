.class public final synthetic Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$oFIm6uYkdj5stFo7-lgqBina_3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$oFIm6uYkdj5stFo7-lgqBina_3Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$oFIm6uYkdj5stFo7-lgqBina_3Y;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$oFIm6uYkdj5stFo7-lgqBina_3Y;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$oFIm6uYkdj5stFo7-lgqBina_3Y;->INSTANCE:Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$oFIm6uYkdj5stFo7-lgqBina_3Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->lambda$getConnectedDevicesAddress$1(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
