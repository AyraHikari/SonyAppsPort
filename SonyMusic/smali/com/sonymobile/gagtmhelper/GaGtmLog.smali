.class public Lcom/sonymobile/gagtmhelper/GaGtmLog;
.super Ljava/lang/Object;
.source "GaGtmLog.java"


# static fields
.field private static volatile mEnabled:Z


# direct methods
.method public static enable(Z)V
    .locals 0

    .line 22
    sput-boolean p0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/sonymobile/gagtmhelper/GaGtmLog;->mEnabled:Z

    return v0
.end method
