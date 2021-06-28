.class public final enum Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;
.super Ljava/lang/Enum;
.source "EditMusicInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

.field public static final enum ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

.field public static final enum ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    const-string v1, "ALBUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    .line 67
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    const-string v1, "ARTIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->$VALUES:[Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;
    .locals 1

    .line 65
    const-class v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;
    .locals 1

    .line 65
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->$VALUES:[Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    return-object v0
.end method
