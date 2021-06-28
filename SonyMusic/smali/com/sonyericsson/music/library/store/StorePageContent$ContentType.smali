.class final enum Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;
.super Ljava/lang/Enum;
.source "StorePageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StorePageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

.field public static final enum ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

.field public static final enum TRACKS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const-string v1, "ALBUMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    .line 15
    new-instance v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const-string v1, "TRACKS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->TRACKS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    sget-object v1, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->TRACKS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->$VALUES:[Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;
    .locals 1

    .line 13
    const-class v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;
    .locals 1

    .line 13
    sget-object v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->$VALUES:[Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    return-object v0
.end method
