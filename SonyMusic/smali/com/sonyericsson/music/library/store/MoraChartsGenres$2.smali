.class final Lcom/sonyericsson/music/library/store/MoraChartsGenres$2;
.super Ljava/util/ArrayList;
.source "MoraChartsGenres.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/MoraChartsGenres;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/sonyericsson/music/library/store/StorePageContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent;

    const-string v1, "https://cf.mora.jp/contents/data/ranking/web/weekly/singleRank_all.json"

    sget-object v2, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->TRACKS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const v3, 0x7f1000f9

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/library/store/StorePageContent;-><init>(Ljava/lang/String;ILcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent;

    const-string v1, "https://cf.mora.jp/contents/data/ranking/web/monthly/singleRank_all.json"

    sget-object v2, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->TRACKS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const v3, 0x7f1000f8

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/library/store/StorePageContent;-><init>(Ljava/lang/String;ILcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent;

    const-string v1, "https://cf.mora.jp/contents/data/ranking/web/weekly/albumRank_all.json"

    sget-object v2, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const v3, 0x7f1000f7

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/library/store/StorePageContent;-><init>(Ljava/lang/String;ILcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent;

    const-string v1, "https://cf.mora.jp/contents/data/ranking/web/monthly/albumRank_all.json"

    sget-object v2, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const v3, 0x7f1000f6

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/library/store/StorePageContent;-><init>(Ljava/lang/String;ILcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
