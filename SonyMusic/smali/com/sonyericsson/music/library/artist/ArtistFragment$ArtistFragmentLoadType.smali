.class public final enum Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;
.super Ljava/lang/Enum;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/artist/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArtistFragmentLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

.field public static final enum ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

.field public static final enum ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

.field public static final enum TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 129
    new-instance v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    const-string v1, "ARTIST_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    new-instance v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    const-string v1, "TRACK_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    new-instance v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    const-string v1, "ALBUM_ID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    const/4 v0, 0x3

    .line 128
    new-array v0, v0, [Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->$VALUES:[Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;
    .locals 1

    .line 128
    const-class v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;
    .locals 1

    .line 128
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->$VALUES:[Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    return-object v0
.end method
