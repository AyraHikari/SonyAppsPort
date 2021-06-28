.class public final Lcom/sonyericsson/music/MusicIntent;
.super Ljava/lang/Object;
.source "MusicIntent.java"


# static fields
.field public static final ACTION_START_PLAYBACK:Ljava/lang/String; = "com.sonyericsson.music.action.START_PLAYBACK"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "com.sonyericsson.music.extra.ALBUM"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "com.sonyericsson.music.extra.ARTIST"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "com.sonyericsson.music.extra.TITLE"

.field public static final EXTRA_START_POSITION:Ljava/lang/String; = "com.sonyericsson.music.extra.START_POSITION"

.field public static final PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.MUSICSERVICE"

.field private static final SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonyericsson.music"

    const-string v2, "com.sonyericsson.music.proxyservice.ProxyService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/music/MusicIntent;->SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getActivityIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.action.START_PLAYBACK"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static final getServiceIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.action.START_PLAYBACK"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    sget-object p0, Lcom/sonyericsson/music/MusicIntent;->SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final setStartTrackExtras(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.sonyericsson.music.extra.START_POSITION"

    .line 119
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.extra.ARTIST"

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.extra.ALBUM"

    .line 121
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sonyericsson.music.extra.TITLE"

    .line 122
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
