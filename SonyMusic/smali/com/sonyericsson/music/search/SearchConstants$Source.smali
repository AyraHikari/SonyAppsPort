.class public final enum Lcom/sonyericsson/music/search/SearchConstants$Source;
.super Ljava/lang/Enum;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/search/SearchConstants$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Source;

.field public static final enum MEDIA_STORE:Lcom/sonyericsson/music/search/SearchConstants$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Source;

    const-string v1, "MEDIA_STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/search/SearchConstants$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Source;->MEDIA_STORE:Lcom/sonyericsson/music/search/SearchConstants$Source;

    const/4 v0, 0x1

    .line 115
    new-array v0, v0, [Lcom/sonyericsson/music/search/SearchConstants$Source;

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Source;->MEDIA_STORE:Lcom/sonyericsson/music/search/SearchConstants$Source;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Source;->$VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromTableSource(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;)Lcom/sonyericsson/music/search/SearchConstants$Source;
    .locals 3

    .line 130
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Source:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    sget-object p0, Lcom/sonyericsson/music/search/SearchConstants$Source;->MEDIA_STORE:Lcom/sonyericsson/music/search/SearchConstants$Source;

    return-object p0

    .line 134
    :cond_0
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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/search/SearchConstants$Source;
    .locals 1

    .line 115
    const-class v0, Lcom/sonyericsson/music/search/SearchConstants$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/search/SearchConstants$Source;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/search/SearchConstants$Source;
    .locals 1

    .line 115
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Source;->$VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Source;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/search/SearchConstants$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/search/SearchConstants$Source;

    return-object v0
.end method


# virtual methods
.method public toTableSource()Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;
    .locals 3

    .line 120
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Source:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No table source for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
