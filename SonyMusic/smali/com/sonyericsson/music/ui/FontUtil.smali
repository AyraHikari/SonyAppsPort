.class public Lcom/sonyericsson/music/ui/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static final sRobotoLightFont:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    sput-object v0, Lcom/sonyericsson/music/ui/FontUtil;->sRobotoLightFont:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyLightFont(Landroid/widget/TextView;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/sonyericsson/music/ui/FontUtil;->sRobotoLightFont:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
