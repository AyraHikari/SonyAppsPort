.class public final enum Lcom/sonymobile/launcher/allapps/SortMode;
.super Ljava/lang/Enum;
.source "SortMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/launcher/allapps/SortMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/launcher/allapps/SortMode;

.field public static final enum ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

.field public static final enum OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/sonymobile/launcher/allapps/SortMode;

    const-string v1, "ALPHABETICAL"

    const/4 v2, 0x0

    const-string v3, "alpha"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/launcher/allapps/SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 9
    new-instance v1, Lcom/sonymobile/launcher/allapps/SortMode;

    const-string v3, "OWN_ORDER"

    const/4 v4, 0x1

    const-string v5, "free"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonymobile/launcher/allapps/SortMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 7
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonymobile/launcher/allapps/SortMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sonymobile/launcher/allapps/SortMode;->$VALUES:[Lcom/sonymobile/launcher/allapps/SortMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/sonymobile/launcher/allapps/SortMode;->mText:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sonymobile/launcher/allapps/SortMode;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/sonymobile/launcher/allapps/SortMode;->values()[Lcom/sonymobile/launcher/allapps/SortMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    .local v3, "mode":Lcom/sonymobile/launcher/allapps/SortMode;
    iget-object v4, v3, Lcom/sonymobile/launcher/allapps/SortMode;->mText:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    return-object v3

    .line 34
    .end local v3    # "mode":Lcom/sonymobile/launcher/allapps/SortMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid sort mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/launcher/allapps/SortMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/allapps/SortMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/launcher/allapps/SortMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/sonymobile/launcher/allapps/SortMode;->$VALUES:[Lcom/sonymobile/launcher/allapps/SortMode;

    invoke-virtual {v0}, [Lcom/sonymobile/launcher/allapps/SortMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/launcher/allapps/SortMode;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sonymobile/launcher/allapps/SortMode;->mText:Ljava/lang/String;

    return-object v0
.end method
