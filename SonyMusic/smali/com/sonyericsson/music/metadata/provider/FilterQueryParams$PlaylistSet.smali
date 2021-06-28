.class public final enum Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;
.super Ljava/lang/Enum;
.source "FilterQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

.field public static final enum PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

.field public static final enum PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;


# instance fields
.field private mParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 122
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    const-string v1, "PLAYLIST_TYPE_EDITABLE_ONLY"

    const-string v2, "editable"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 123
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    const-string v1, "PLAYLIST_TYPE_ALL_NOT_SMART"

    const-string v2, "not_smart"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->mParam:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;
    .locals 1

    .line 121
    const-class v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;
    .locals 1

    .line 121
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    return-object v0
.end method


# virtual methods
.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->mParam:Ljava/lang/String;

    return-object v0
.end method
