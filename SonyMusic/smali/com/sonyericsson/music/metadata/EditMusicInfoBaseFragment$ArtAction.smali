.class final enum Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;
.super Ljava/lang/Enum;
.source "EditMusicInfoBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ArtAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

.field public static final enum REMOVE_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

.field public static final enum SET_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;


# instance fields
.field final mStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 819
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    const-string v1, "SET_IMAGE"

    const/4 v2, 0x0

    const v3, 0x7f100082

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->SET_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    .line 820
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    const-string v1, "REMOVE_IMAGE"

    const/4 v3, 0x1

    const v4, 0x7f100081

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->REMOVE_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    const/4 v0, 0x2

    .line 818
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->SET_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->REMOVE_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->$VALUES:[Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 824
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 825
    iput p3, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->mStringId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;
    .locals 1

    .line 818
    const-class v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;
    .locals 1

    .line 818
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->$VALUES:[Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
