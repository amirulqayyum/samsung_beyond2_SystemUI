.class public abstract Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "UcmAgentProviderImpl.java"

# interfaces
.implements Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UcmAgentKeyPairGeneratorSpi"
.end annotation


# instance fields
.field private errorStatus:I

.field private mProperty:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->errorStatus:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->errorStatus:I

    return p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 293
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->mProperty:Landroid/os/Bundle;

    return-void
.end method
