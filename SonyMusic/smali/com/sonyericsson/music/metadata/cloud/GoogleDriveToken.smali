.class public Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;
.super Ljava/lang/Object;
.source "GoogleDriveToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;
    }
.end annotation


# static fields
.field private static final INVALID_POST_FIX:Ljava/lang/String; = "Invalid"

.field private static final OAUTH2_SCOPE:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/drive"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancelSimulationInvalidToken(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 55
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->simulateInvalidToken(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid"

    const-string v1, ""

    .line 56
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->cancelSimulationInvalidToken(Landroid/content/Context;)V

    .line 60
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oauth2:https://www.googleapis.com/auth/drive"

    .line 37
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->simulateInvalidToken(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static simulateInvalidToken(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
