.class public final enum Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;
.super Ljava/lang/Enum;
.source "CustomHeadsetHookHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

.field public static final enum DOUBLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

.field public static final enum NONE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

.field public static final enum SINGLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

.field public static final enum TRIPLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->NONE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    new-instance v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    const-string v1, "SINGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->SINGLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    new-instance v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    const-string v1, "DOUBLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->DOUBLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    new-instance v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    const-string v1, "TRIPLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->TRIPLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->NONE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->SINGLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->DOUBLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->TRIPLE:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->$VALUES:[Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;
    .locals 1

    .line 23
    const-class v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;
    .locals 1

    .line 23
    sget-object v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->$VALUES:[Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;

    return-object v0
.end method
