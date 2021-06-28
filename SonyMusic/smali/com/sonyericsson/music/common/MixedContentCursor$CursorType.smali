.class public final enum Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;
.super Ljava/lang/Enum;
.source "MixedContentCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MixedContentCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

.field public static final enum MIXED:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

.field public static final enum TYPE1:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

.field public static final enum TYPE2:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    const-string v1, "TYPE1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->TYPE1:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    new-instance v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    const-string v1, "TYPE2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->TYPE2:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    new-instance v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    const-string v1, "MIXED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->MIXED:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    sget-object v1, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->TYPE1:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->TYPE2:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->MIXED:Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->$VALUES:[Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;
    .locals 1

    .line 13
    const-class v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;
    .locals 1

    .line 13
    sget-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->$VALUES:[Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/MixedContentCursor$CursorType;

    return-object v0
.end method
