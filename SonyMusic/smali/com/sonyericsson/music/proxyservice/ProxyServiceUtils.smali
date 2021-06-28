.class public final Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;
.super Ljava/lang/Object;
.source "ProxyServiceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDlnaCastPlayer(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "DlnaCastPlayer"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGoogleCastPlayer(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "GoogleCastPlayer"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocalPlayer(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "LocalPlayer"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwitchToDlnaCastPlayer(Lcom/sonyericsson/music/playerservice/PlayerService;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isDlnaCastPlayer(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwitchToGoogleCastPlayer(Lcom/sonyericsson/music/playerservice/PlayerService;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isGoogleCastPlayer(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSwitchToLocalPlayer(Lcom/sonyericsson/music/playerservice/PlayerService;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isLocalPlayer(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
