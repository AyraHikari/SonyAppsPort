.class public final enum Lcom/sonyericsson/music/search/Label;
.super Ljava/lang/Enum;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/search/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/search/Label;

.field public static final enum ALBUM:Lcom/sonyericsson/music/search/Label;

.field public static final enum ARTIST:Lcom/sonyericsson/music/search/Label;

.field public static final enum RECENT_SEARCHES:Lcom/sonyericsson/music/search/Label;

.field public static final enum TRACK:Lcom/sonyericsson/music/search/Label;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/sonyericsson/music/search/Label;

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/search/Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/Label;->ARTIST:Lcom/sonyericsson/music/search/Label;

    new-instance v0, Lcom/sonyericsson/music/search/Label;

    const-string v1, "ALBUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/search/Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/Label;->ALBUM:Lcom/sonyericsson/music/search/Label;

    new-instance v0, Lcom/sonyericsson/music/search/Label;

    const-string v1, "TRACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/search/Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/Label;->TRACK:Lcom/sonyericsson/music/search/Label;

    new-instance v0, Lcom/sonyericsson/music/search/Label;

    const-string v1, "RECENT_SEARCHES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/search/Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/search/Label;->RECENT_SEARCHES:Lcom/sonyericsson/music/search/Label;

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/sonyericsson/music/search/Label;

    sget-object v1, Lcom/sonyericsson/music/search/Label;->ARTIST:Lcom/sonyericsson/music/search/Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/search/Label;->ALBUM:Lcom/sonyericsson/music/search/Label;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/search/Label;->TRACK:Lcom/sonyericsson/music/search/Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/search/Label;->RECENT_SEARCHES:Lcom/sonyericsson/music/search/Label;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/search/Label;->$VALUES:[Lcom/sonyericsson/music/search/Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/search/Label;
    .locals 1

    .line 11
    const-class v0, Lcom/sonyericsson/music/search/Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/search/Label;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/search/Label;
    .locals 1

    .line 11
    sget-object v0, Lcom/sonyericsson/music/search/Label;->$VALUES:[Lcom/sonyericsson/music/search/Label;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/search/Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/search/Label;

    return-object v0
.end method
