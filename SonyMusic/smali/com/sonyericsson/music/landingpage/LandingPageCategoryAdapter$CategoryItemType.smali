.class final enum Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
.super Ljava/lang/Enum;
.source "LandingPageCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CategoryItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum SMART_PLAYLIST_FAVORITES:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum SMART_PLAYLIST_MOST_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum SMART_PLAYLIST_NEWLY_ADDED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum SMART_PLAYLIST_RECENTLY_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field public static final enum TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 70
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "ALBUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 71
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "ARTIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 72
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 73
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "PLAYLIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 74
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "GENRE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 75
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "SMART_PLAYLIST_RECENTLY_PLAYED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_RECENTLY_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 76
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "SMART_PLAYLIST_MOST_PLAYED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_MOST_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 77
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "SMART_PLAYLIST_NEWLY_ADDED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_NEWLY_ADDED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 78
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "SMART_PLAYLIST_FAVORITES"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_FAVORITES:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 79
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "TRACK"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 80
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const-string v1, "NONE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    const/16 v0, 0xb

    .line 69
    new-array v0, v0, [Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_RECENTLY_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_MOST_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_NEWLY_ADDED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_FAVORITES:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->$VALUES:[Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
    .locals 1

    .line 69
    const-class v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
    .locals 1

    .line 69
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->$VALUES:[Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    return-object v0
.end method
