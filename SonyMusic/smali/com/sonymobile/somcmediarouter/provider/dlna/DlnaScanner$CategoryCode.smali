.class public final enum Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;
.super Ljava/lang/Enum;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

.field public static final enum CATEGORY_SPEAKER:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

.field public static final enum CATEGORY_TV:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

.field public static final enum CATEGORY_UNKNOWN:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const-string v1, "CATEGORY_TV"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_TV:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    .line 57
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const-string v1, "CATEGORY_SPEAKER"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_SPEAKER:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    .line 58
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const-string v1, "CATEGORY_UNKNOWN"

    invoke-direct {v0, v1, v3, v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_UNKNOWN:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_TV:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_SPEAKER:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_UNKNOWN:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->$VALUES:[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->mCode:I

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;
    .locals 0

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->valueOf(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    sget-object p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_UNKNOWN:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;
    .locals 1

    .line 54
    const-class v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;
    .locals 1

    .line 54
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->$VALUES:[Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    invoke-virtual {v0}, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    return-object v0
.end method
