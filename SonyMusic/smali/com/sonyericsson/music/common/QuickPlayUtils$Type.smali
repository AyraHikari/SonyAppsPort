.class public final enum Lcom/sonyericsson/music/common/QuickPlayUtils$Type;
.super Ljava/lang/Enum;
.source "QuickPlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/QuickPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/QuickPlayUtils$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field public static final enum USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;


# instance fields
.field private final mContentDescriptionResId:I

.field private final mEmptyToastResId:I

.field private final mFabImageResId:I

.field private final mPlayToastResId:I

.field private final mRadioButtonTextResId:I

.field private final mSharedPrefsValue:Ljava/lang/String;

.field private final mSmartPlaylistId:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 36
    new-instance v10, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v1, "ALL_TRACKS"

    const-string v3, "all_tracks"

    const/4 v2, 0x0

    const v4, 0x7f100271

    const v5, 0x7f0801ed

    const/4 v6, 0x3

    const v7, 0x7f10026d

    const v8, 0x7f10026c

    const v9, 0x7f10026b

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v10, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 44
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v12, "USER_PLAYLIST"

    const-string v14, "user_playlist"

    const/4 v13, 0x1

    const v15, 0x7f100272

    const v16, 0x7f0801ed

    const/16 v17, -0x1

    const v18, 0x7f100275

    const v19, 0x7f100274

    const v20, 0x7f100273

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 52
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v2, "MOST_PLAYED"

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 55
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result v7

    const/4 v3, 0x2

    const/4 v5, -0x1

    const v6, 0x7f0801ed

    const v8, 0x7f100275

    const v9, 0x7f100274

    const v10, 0x7f100273

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 60
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v12, "NEWLY_ADDED"

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v14

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 63
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result v17

    const/4 v13, 0x3

    const/4 v15, -0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 68
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v2, "RECENTLY_PLAYED"

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 71
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result v7

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 76
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v12, "FAVORITES"

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v14

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 79
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result v17

    const/4 v13, 0x5

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 84
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const-string v2, "HIDE_BUTTON"

    const-string v4, "hide_button"

    const/4 v3, 0x6

    const v5, 0x7f10026e

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v0, 0x7

    .line 34
    new-array v0, v0, [Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->$VALUES:[Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIII)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mSharedPrefsValue:Ljava/lang/String;

    .line 105
    iput p4, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mRadioButtonTextResId:I

    .line 106
    iput p5, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mFabImageResId:I

    .line 107
    iput p6, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mSmartPlaylistId:I

    .line 108
    iput p7, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mPlayToastResId:I

    .line 109
    iput p8, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mEmptyToastResId:I

    .line 110
    iput p9, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mContentDescriptionResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/QuickPlayUtils$Type;
    .locals 1

    .line 34
    const-class v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/QuickPlayUtils$Type;
    .locals 1

    .line 34
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->$VALUES:[Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-object v0
.end method


# virtual methods
.method public getContentDescription()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mContentDescriptionResId:I

    return v0
.end method

.method public getEmptyToastResId()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mEmptyToastResId:I

    return v0
.end method

.method public getFabImageResId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mFabImageResId:I

    return v0
.end method

.method public getPlayToastResId()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mPlayToastResId:I

    return v0
.end method

.method public getRadioButtonTextResId()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mRadioButtonTextResId:I

    return v0
.end method

.method public getSharedPrefsValue()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mSharedPrefsValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartPlaylistId()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->mSmartPlaylistId:I

    return v0
.end method
