.class public final Lcom/sonyericsson/music/common/QuickPlayUtils;
.super Ljava/lang/Object;
.source "QuickPlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;,
        Lcom/sonyericsson/music/common/QuickPlayUtils$Type;
    }
.end annotation


# static fields
.field private static final ALL_TRACKS:Ljava/lang/String; = "all_tracks"

.field private static final HIDE_BUTTON:Ljava/lang/String; = "hide_button"

.field private static final USER_PLAYLIST:Ljava/lang/String; = "user_playlist"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateSharedPrefsValueToType(Ljava/lang/String;)Lcom/sonyericsson/music/common/QuickPlayUtils$Type;
    .locals 1

    if-eqz p0, :cond_6

    .line 148
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 150
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 152
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 154
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 156
    :cond_3
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 158
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 160
    :cond_5
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 161
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0

    .line 165
    :cond_6
    sget-object p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0
.end method

.method public static translateSmartPlaylistContainerUriToType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 1

    .line 170
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object p0

    .line 173
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object p0

    .line 176
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object p0

    .line 179
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 181
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
