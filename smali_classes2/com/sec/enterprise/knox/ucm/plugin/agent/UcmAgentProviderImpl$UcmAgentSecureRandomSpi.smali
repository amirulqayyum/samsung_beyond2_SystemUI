.class public abstract Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;
.super Ljava/security/SecureRandomSpi;
.source "UcmAgentProviderImpl.java"

# interfaces
.implements Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UcmAgentSecureRandomSpi"
.end annotation


# instance fields
.field private errorStatus:I

.field private mProperty:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 325
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    const/4 v0, 0x0

    .line 327
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->errorStatus:I

    return-void
.end method


# virtual methods
.method public abstract engineGenerateSeed(I)[B
.end method

.method protected engineNextBytes([B)V
    .locals 0

    .line 356
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetSeed([B)V
    .locals 0

    .line 351
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 346
    iget p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->errorStatus:I

    return p0
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->mProperty:Landroid/os/Bundle;

    return-void
.end method
