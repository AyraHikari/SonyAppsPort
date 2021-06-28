.class public final enum Lcom/sonyericsson/music/search/SearchConstants$Type;
.super Ljava/lang/Enum;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/search/SearchConstants$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Type;

.field public static final enum ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

.field public static final enum ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

.field public static final enum TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Type;

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/search/SearchConstants$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 76
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Type;

    const-string v1, "ALBUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/search/SearchConstants$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 77
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Type;

    const-string v1, "TRACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/search/SearchConstants$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    const/4 v0, 0x3

    .line 74
    new-array v0, v0, [Lcom/sonyericsson/music/search/SearchConstants$Type;

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->$VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromTableType(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;)Lcom/sonyericsson/music/search/SearchConstants$Type;
    .locals 3

    .line 95
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t convert from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-object p0

    .line 99
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-object p0

    .line 97
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/search/SearchConstants$Type;
    .locals 1

    .line 74
    const-class v0, Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/search/SearchConstants$Type;
    .locals 1

    .line 74
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->$VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/search/SearchConstants$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-object v0
.end method


# virtual methods
.method public toTableType()Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;
    .locals 3

    .line 81
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No table type for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    return-object v0

    .line 85
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    return-object v0

    .line 83
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ARTIST:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
