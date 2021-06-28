.class public final enum Lcom/sonyericsson/music/library/store/MoraChartsGenres;
.super Ljava/lang/Enum;
.source "MoraChartsGenres.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/library/store/MoraChartsGenres;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/library/store/MoraChartsGenres;

.field public static final enum HIRES:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

.field public static final enum JAPANESE:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

.field private static final ROOT_PATH:Ljava/lang/String; = "https://cf.mora.jp/contents/data/ranking/web"

.field private static final ROOT_PATH_MONTHLY:Ljava/lang/String; = "https://cf.mora.jp/contents/data/ranking/web/monthly/"

.field private static final ROOT_PATH_WEEKLY:Ljava/lang/String; = "https://cf.mora.jp/contents/data/ranking/web/weekly/"

.field public static final enum TOTAL:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

.field public static final enum WESTERN_AND_ASIAN:Lcom/sonyericsson/music/library/store/MoraChartsGenres;


# instance fields
.field private mStorePage:Lcom/sonyericsson/music/library/store/StorePage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    const-string v1, "HIRES"

    new-instance v2, Lcom/sonyericsson/music/library/store/MoraChartsGenres$1;

    invoke-direct {v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres$1;-><init>()V

    const/4 v3, 0x0

    const v4, 0x7f1000fc

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;-><init>(Ljava/lang/String;IILjava/util/ArrayList;)V

    sput-object v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->HIRES:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    .line 24
    new-instance v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    const-string v1, "TOTAL"

    new-instance v2, Lcom/sonyericsson/music/library/store/MoraChartsGenres$2;

    invoke-direct {v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres$2;-><init>()V

    const/4 v4, 0x1

    const v5, 0x7f1000fa

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;-><init>(Ljava/lang/String;IILjava/util/ArrayList;)V

    sput-object v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->TOTAL:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    .line 34
    new-instance v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    const-string v1, "JAPANESE"

    new-instance v2, Lcom/sonyericsson/music/library/store/MoraChartsGenres$3;

    invoke-direct {v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres$3;-><init>()V

    const/4 v5, 0x2

    const v6, 0x7f1000fd

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;-><init>(Ljava/lang/String;IILjava/util/ArrayList;)V

    sput-object v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->JAPANESE:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    .line 44
    new-instance v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    const-string v1, "WESTERN_AND_ASIAN"

    new-instance v2, Lcom/sonyericsson/music/library/store/MoraChartsGenres$4;

    invoke-direct {v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres$4;-><init>()V

    const/4 v6, 0x3

    const v7, 0x7f1000fe

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;-><init>(Ljava/lang/String;IILjava/util/ArrayList;)V

    sput-object v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->WESTERN_AND_ASIAN:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->HIRES:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->TOTAL:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->JAPANESE:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->WESTERN_AND_ASIAN:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->$VALUES:[Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    new-instance p1, Lcom/sonyericsson/music/library/store/StorePage;

    invoke-direct {p1, p3, p4}, Lcom/sonyericsson/music/library/store/StorePage;-><init>(ILjava/util/ArrayList;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->mStorePage:Lcom/sonyericsson/music/library/store/StorePage;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/library/store/MoraChartsGenres;
    .locals 1

    .line 13
    const-class v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/library/store/MoraChartsGenres;
    .locals 1

    .line 13
    sget-object v0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->$VALUES:[Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/library/store/MoraChartsGenres;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    return-object v0
.end method


# virtual methods
.method public getStorePage()Lcom/sonyericsson/music/library/store/StorePage;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->mStorePage:Lcom/sonyericsson/music/library/store/StorePage;

    return-object v0
.end method
