.class public final enum Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;
.super Ljava/lang/Enum;
.source "TextStyleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/TextStyleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

.field public static final enum EXTRA_SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

.field public static final enum MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

.field public static final enum SMALL:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

.field public static final enum SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    new-instance v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    new-instance v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const-string v1, "SMALL_SECONDARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    new-instance v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const-string v1, "EXTRA_SMALL_SECONDARY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->EXTRA_SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->EXTRA_SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->$VALUES:[Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;
    .locals 1

    .line 19
    const-class v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->$VALUES:[Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    return-object v0
.end method
