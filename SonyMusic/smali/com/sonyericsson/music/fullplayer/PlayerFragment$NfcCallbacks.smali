.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    return-void
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2700(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1214
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isTransferableFile(Landroid/net/Uri;)Z
    .locals 0

    .line 1218
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 2

    .line 1190
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;->getCurrentUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1191
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;->isTransferableFile(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1192
    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 2

    .line 1202
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;->getCurrentUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1203
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;->isTransferableFile(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1204
    new-array v0, v0, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    .line 1205
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object p1

    aput-object p1, v0, v1

    .line 1207
    new-instance p1, Landroid/nfc/NdefMessage;

    invoke-direct {p1, v0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
