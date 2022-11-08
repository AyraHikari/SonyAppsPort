.class public Lcom/sonymobile/launcher/gameenhancer/GameEnhancerConst;
.super Ljava/lang/Object;
.source "GameEnhancerConst.java"


# static fields
.field public static final GAME_ENHANCER_MAIN_LAUNCHER_CLASS_NAME:Ljava/lang/String; = "com.sonymobile.gameenhancer.common.MainActivity"

.field public static final GAME_ENHANCER_MAIN_LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final GAME_ENHANCER_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.gameenhancer"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonymobile.gameenhancer"

    const-string v2, "com.sonymobile.gameenhancer.common.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerConst;->GAME_ENHANCER_MAIN_LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
