.class public final enum Lcom/sonymobile/music/common/Trinary;
.super Ljava/lang/Enum;
.source "Trinary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/music/common/Trinary;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/music/common/Trinary;

.field public static final enum FALSE:Lcom/sonymobile/music/common/Trinary;

.field public static final enum TRUE:Lcom/sonymobile/music/common/Trinary;

.field public static final enum UNKNOWN:Lcom/sonymobile/music/common/Trinary;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/sonymobile/music/common/Trinary;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/music/common/Trinary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/Trinary;->TRUE:Lcom/sonymobile/music/common/Trinary;

    new-instance v0, Lcom/sonymobile/music/common/Trinary;

    const-string v1, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/music/common/Trinary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/Trinary;->FALSE:Lcom/sonymobile/music/common/Trinary;

    new-instance v0, Lcom/sonymobile/music/common/Trinary;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/music/common/Trinary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/music/common/Trinary;->UNKNOWN:Lcom/sonymobile/music/common/Trinary;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/sonymobile/music/common/Trinary;

    sget-object v1, Lcom/sonymobile/music/common/Trinary;->TRUE:Lcom/sonymobile/music/common/Trinary;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/music/common/Trinary;->FALSE:Lcom/sonymobile/music/common/Trinary;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/music/common/Trinary;->UNKNOWN:Lcom/sonymobile/music/common/Trinary;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/music/common/Trinary;->$VALUES:[Lcom/sonymobile/music/common/Trinary;

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

.method public static fromBoolean(Z)Lcom/sonymobile/music/common/Trinary;
    .locals 0

    if-eqz p0, :cond_0

    .line 28
    sget-object p0, Lcom/sonymobile/music/common/Trinary;->TRUE:Lcom/sonymobile/music/common/Trinary;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/sonymobile/music/common/Trinary;->FALSE:Lcom/sonymobile/music/common/Trinary;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/music/common/Trinary;
    .locals 1

    .line 11
    const-class v0, Lcom/sonymobile/music/common/Trinary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/music/common/Trinary;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/music/common/Trinary;
    .locals 1

    .line 11
    sget-object v0, Lcom/sonymobile/music/common/Trinary;->$VALUES:[Lcom/sonymobile/music/common/Trinary;

    invoke-virtual {v0}, [Lcom/sonymobile/music/common/Trinary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/music/common/Trinary;

    return-object v0
.end method


# virtual methods
.method public isFalse()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/sonymobile/music/common/Trinary;->FALSE:Lcom/sonymobile/music/common/Trinary;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrue()Z
    .locals 1

    .line 15
    sget-object v0, Lcom/sonymobile/music/common/Trinary;->TRUE:Lcom/sonymobile/music/common/Trinary;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/sonymobile/music/common/Trinary;->UNKNOWN:Lcom/sonymobile/music/common/Trinary;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
