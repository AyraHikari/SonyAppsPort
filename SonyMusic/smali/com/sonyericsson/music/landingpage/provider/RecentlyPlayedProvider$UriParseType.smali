.class final enum Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;
.super Ljava/lang/Enum;
.source "RecentlyPlayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UriParseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

.field public static final enum DEFAULT:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

.field public static final enum GENRE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

.field public static final enum PLAYLIST:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    const-string v1, "PLAYLIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    .line 70
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    const-string v1, "GENRE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->GENRE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    .line 71
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    const-string v1, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->DEFAULT:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    const/4 v0, 0x3

    .line 68
    new-array v0, v0, [Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->GENRE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->DEFAULT:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->$VALUES:[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;
    .locals 1

    .line 68
    const-class v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;
    .locals 1

    .line 68
    sget-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->$VALUES:[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$UriParseType;

    return-object v0
.end method
