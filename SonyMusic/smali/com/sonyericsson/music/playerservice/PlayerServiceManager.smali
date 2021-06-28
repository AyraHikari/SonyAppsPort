.class public Lcom/sonyericsson/music/playerservice/PlayerServiceManager;
.super Ljava/lang/Object;
.source "PlayerServiceManager.java"


# static fields
.field public static final OUTPUT_TYPE_DLNA_CAST:I = 0x1

.field public static final OUTPUT_TYPE_GOOGLE_CAST:I = 0x2

.field public static final OUTPUT_TYPE_LOCAL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 30
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1

    .line 33
    :pswitch_1
    new-instance p1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    invoke-direct {p1, p0, p2, p3}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
