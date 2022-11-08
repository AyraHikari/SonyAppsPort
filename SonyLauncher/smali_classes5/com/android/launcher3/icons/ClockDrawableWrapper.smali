.class public Lcom/android/launcher3/icons/ClockDrawableWrapper;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "ClockDrawableWrapper.java"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapInfo$Extender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockIconDrawable;,
        Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;,
        Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOUR_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.DEFAULT_HOUR"

.field private static final DEFAULT_MINUTE_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.DEFAULT_MINUTE"

.field private static final DEFAULT_SECOND_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.DEFAULT_SECOND"

.field private static final DISABLE_SECONDS:Z = true

.field private static final HOUR_INDEX_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.HOUR_LAYER_INDEX"

.field public static final INVALID_VALUE:I = -0x1

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.android.launcher3"

.field private static final LEVELS_PER_SECOND:I = 0xa

.field private static final MINUTE_INDEX_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.MINUTE_LAYER_INDEX"

.field private static final NO_COLOR:I = -0x1

.field private static final ROUND_ICON_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.LEVEL_PER_TICK_ICON_ROUND"

.field private static final SECOND_INDEX_METADATA_KEY:Ljava/lang/String; = "com.android.launcher3.SECOND_LAYER_INDEX"

.field private static final TAG:Ljava/lang/String; = "ClockDrawableWrapper"

.field public static final TICK_MS:J


# instance fields
.field private final mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

.field private mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->TICK_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V
    .locals 2
    .param p1, "base"    # Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;-><init>(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 89
    iput-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 93
    return-void
.end method

.method private applyThemeData(Lcom/android/launcher3/icons/IconProvider$ThemeData;)V
    .locals 8
    .param p1, "themeData"    # Lcom/android/launcher3/icons/IconProvider$ThemeData;

    .line 96
    sget-boolean v0, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 102
    .local v1, "count":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v2, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 104
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 105
    .local v4, "v":Landroid/util/TypedValue;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1

    .line 107
    iget v6, v4, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    .line 105
    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    .end local v4    # "v":Landroid/util/TypedValue;
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    new-instance v3, Lcom/android/launcher3/icons/ClockDrawableWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/IconProvider$ThemeData;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->forExtras(Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/android/launcher3/icons/ClockDrawableWrapper;

    move-result-object v3

    .line 115
    .local v3, "drawable":Lcom/android/launcher3/icons/ClockDrawableWrapper;
    if-eqz v3, :cond_3

    .line 116
    iget-object v4, v3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iput-object v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    .end local v1    # "count":I
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "drawable":Lcom/android/launcher3/icons/ClockDrawableWrapper;
    :cond_3
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClockDrawableWrapper"

    const-string v2, "Error loading themed clock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 97
    :cond_4
    :goto_3
    return-void
.end method

.method private static forExtras(Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/android/launcher3/icons/ClockDrawableWrapper;
    .locals 10
    .param p0, "metadata"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/IntFunction<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/android/launcher3/icons/ClockDrawableWrapper;"
        }
    .end annotation

    .line 163
    .local p1, "drawableProvider":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 164
    return-object v0

    .line 166
    :cond_0
    const-string v1, "com.android.launcher3.LEVEL_PER_TICK_ICON_ROUND"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 167
    .local v1, "drawableId":I
    if-nez v1, :cond_1

    .line 168
    return-object v0

    .line 171
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v4, :cond_2

    .line 173
    return-object v0

    .line 175
    :cond_2
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 177
    .local v4, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    new-instance v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    invoke-direct {v5, v4}, Lcom/android/launcher3/icons/ClockDrawableWrapper;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V

    .line 178
    .local v5, "wrapper":Lcom/android/launcher3/icons/ClockDrawableWrapper;
    iget-object v6, v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 180
    .local v6, "info":Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 181
    const-string v7, "com.android.launcher3.HOUR_LAYER_INDEX"

    const/4 v8, -0x1

    invoke-virtual {p0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    .line 182
    const-string v7, "com.android.launcher3.MINUTE_LAYER_INDEX"

    invoke-virtual {p0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    .line 183
    const-string v7, "com.android.launcher3.SECOND_LAYER_INDEX"

    invoke-virtual {p0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    .line 185
    const-string v7, "com.android.launcher3.DEFAULT_HOUR"

    invoke-virtual {p0, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    .line 186
    const-string v7, "com.android.launcher3.DEFAULT_MINUTE"

    invoke-virtual {p0, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    .line 187
    const-string v7, "com.android.launcher3.DEFAULT_SECOND"

    invoke-virtual {p0, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    .line 189
    invoke-virtual {v5}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 190
    .local v2, "foreground":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    .line 191
    .local v7, "layerCount":I
    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    if-ltz v9, :cond_3

    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    if-lt v9, v7, :cond_4

    .line 192
    :cond_3
    iput v8, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    .line 194
    :cond_4
    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-ltz v9, :cond_5

    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-lt v9, v7, :cond_6

    .line 195
    :cond_5
    iput v8, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    .line 197
    :cond_6
    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-ltz v9, :cond_8

    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-lt v9, v7, :cond_7

    goto :goto_0

    .line 200
    :cond_7
    iget v9, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    invoke-virtual {v2, v9, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 201
    iput v8, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    goto :goto_1

    .line 198
    :cond_8
    :goto_0
    iput v8, v6, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    .line 204
    :goto_1
    sget-boolean v0, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_9

    .line 205
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 206
    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v0, v9, v8}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {v6, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->copyForIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-result-object v0

    iput-object v0, v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 208
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 209
    return-object v5
.end method

.method public static forPackage(Landroid/content/Context;Ljava/lang/String;ILcom/android/launcher3/icons/IconProvider$ThemeData;)Lcom/android/launcher3/icons/ClockDrawableWrapper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "iconDpi"    # I
    .param p3, "themeData"    # Lcom/android/launcher3/icons/IconProvider$ThemeData;

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x2080

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 147
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v4, Lcom/android/launcher3/icons/ClockDrawableWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p2}, Lcom/android/launcher3/icons/ClockDrawableWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/content/res/Resources;I)V

    invoke-static {v3, v4}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->forExtras(Landroid/os/Bundle;Ljava/util/function/IntFunction;)Lcom/android/launcher3/icons/ClockDrawableWrapper;

    move-result-object v3

    .line 150
    .local v3, "wrapper":Lcom/android/launcher3/icons/ClockDrawableWrapper;
    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 151
    invoke-direct {v3, p3}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->applyThemeData(Lcom/android/launcher3/icons/IconProvider$ThemeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    return-object v3

    .line 154
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "wrapper":Lcom/android/launcher3/icons/ClockDrawableWrapper;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClockDrawableWrapper"

    const-string v2, "Unable to load clock drawable info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$applyThemeData$0(Lcom/android/launcher3/icons/IconProvider$ThemeData;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "themeData"    # Lcom/android/launcher3/icons/IconProvider$ThemeData;
    .param p1, "resId"    # I

    .line 111
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 112
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    .local v1, "fg":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method static synthetic lambda$forPackage$1(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "iconDpi"    # I
    .param p2, "resId"    # I

    .line 149
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/LayerDrawable;
    .param p2, "index"    # I

    .line 237
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 238
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public drawForPersistence(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 229
    .local v0, "foreground":Landroid/graphics/drawable/LayerDrawable;
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V

    .line 230
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v1, v1, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->resetLevel(Landroid/graphics/drawable/LayerDrawable;I)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 233
    iget-object v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 234
    return-void
.end method

.method public bridge synthetic getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I
    .param p3, "iconFactory"    # Lcom/android/launcher3/icons/BaseIconFactory;
    .param p4, "normalizationScale"    # F

    .line 215
    move-object v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 217
    .local v2, "background":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmapWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 220
    .local v3, "flattenBG":Landroid/graphics/Bitmap;
    iget-boolean v5, v1, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    move-object v13, v5

    .line 221
    .local v13, "themeInfo":Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/icons/BaseIconFactory;->getWhiteShadowLayer()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    move-object v12, v4

    .line 222
    .local v12, "themeBG":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    iget-object v9, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    move-object v5, v4

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p4

    move-object v10, v3

    move-object v11, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method public getMonochrome()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    return-object v1

    .line 128
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_1

    .line 130
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    .local v1, "mono":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mThemeInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 132
    return-object v1

    .line 134
    .end local v1    # "mono":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v1
.end method
