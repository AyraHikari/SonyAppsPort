.class public final enum Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
.super Ljava/lang/Enum;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundColorSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

.field public static final enum LIST:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

.field public static final enum NONE:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

.field public static final enum WINDOW:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    const-string v1, "WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->WINDOW:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    .line 54
    new-instance v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    const-string v1, "LIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->LIST:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    .line 59
    new-instance v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->NONE:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    sget-object v1, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->WINDOW:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->LIST:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->NONE:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->$VALUES:[Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    .locals 1

    .line 43
    const-class v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    .locals 1

    .line 43
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->$VALUES:[Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-object v0
.end method
