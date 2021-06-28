.class public Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final SOMC_EXTENSION_MASK:I

.field private static final SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

.field private static final SYSTEM_UI_FLAG_FULL_TRANSPARENCY:I

.field private static final SYSTEM_UI_FLAG_LIGHT:I

.field private static final SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

.field private static final SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

.field private static final SYSTEM_UI_FLAG_TRANSPARENT:I


# instance fields
.field private mChangedMask:I

.field private mSystemUiVisibility:I

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    const-string v0, "SYSTEM_UI_FLAG_TRANSPARENT"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    const-string v0, "SYSTEM_UI_FLAG_FULL_TRANSPARENCY"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_FULL_TRANSPARENCY:I

    const-string v0, "SYSTEM_UI_FLAG_ROUNDED_CORNERS"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    const-string v0, "SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

    const-string v0, "SYSTEM_UI_FLAG_LIGHT"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_FULL_TRANSPARENCY:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    or-int/2addr v0, v1

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    iput-object p1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    return-void
.end method

.method private static getValue(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-class v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    invoke-direct {v0, p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private setFlag(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    or-int/2addr p2, p1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p2, v0

    :goto_0
    iput p2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    iget p2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    iget v2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    and-int/2addr v1, v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    return-void
.end method

.method public setTranslucentBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1

    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    return-object p0
.end method

.method public setTranslucentBackgroundOpacity(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_FULL_TRANSPARENCY:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    :cond_2
    return-object p0
.end method

.method public setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1

    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    return-object p0
.end method

.method public supportsTranslucentBackground()Z
    .locals 1

    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsTranslucentBackgroundOpacity(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_FULL_TRANSPARENCY:I

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
