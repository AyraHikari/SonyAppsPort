.class public Lcom/android/launcher3/icons/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/IconProvider$IconChangeListener;,
        Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;,
        Lcom/android/launcher3/icons/IconProvider$ThemeData;
    }
.end annotation


# static fields
.field public static final ATLEAST_T:Z

.field private static final CONFIG_ICON_MASK_RES_ID:I

.field private static final DEBUG:Z = false

.field private static final ICON_METADATA_KEY_PREFIX:Ljava/lang/String; = ".dynamic_icons"

.field private static final SYSTEM_STATE_SEPARATOR:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "IconProvider"


# instance fields
.field private final ACTION_OVERLAY_CHANGED:Ljava/lang/String;

.field private final mCalendar:Landroid/content/ComponentName;

.field private final mClock:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCalendar(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/android/launcher3/icons/IconProvider;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/IconProvider;->mClock:Landroid/content/ComponentName;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_icon_mask"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    .line 69
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    iput-object v0, p0, Lcom/android/launcher3/icons/IconProvider;->ACTION_OVERLAY_CHANGED:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    .line 81
    sget v0, Lcom/android/launcher3/icons/R$string;->calendar_component_name:I

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/IconProvider;->parseComponentOrNull(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    .line 82
    sget v0, Lcom/android/launcher3/icons/R$string;->clock_component_name:I

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/IconProvider;->parseComponentOrNull(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconProvider;->mClock:Landroid/content/ComponentName;

    .line 83
    return-void
.end method

.method private static getDay()I
    .locals 2

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getDynamicIconId(Landroid/os/Bundle;Landroid/content/res/Resources;)I
    .locals 5
    .param p1, "metadata"    # Landroid/os/Bundle;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 210
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 211
    return v0

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dynamic_icons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 215
    .local v2, "arrayId":I
    if-nez v2, :cond_1

    .line 216
    return v0

    .line 219
    :cond_1
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/icons/IconProvider;->getDay()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 220
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    return v0
.end method

.method private getIconWithOverrides(Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconDpi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 123
    .local p3, "fallback":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/IconProvider;->getThemeDataForPackage(Ljava/lang/String;)Lcom/android/launcher3/icons/IconProvider$ThemeData;

    move-result-object v0

    .line 125
    .local v0, "td":Lcom/android/launcher3/icons/IconProvider$ThemeData;
    const/4 v1, 0x0

    .line 126
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/icons/IconProvider;->loadCalendarDrawable(ILcom/android/launcher3/icons/IconProvider$ThemeData;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mClock:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/icons/IconProvider;->mClock:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2, v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper;->forPackage(Landroid/content/Context;Ljava/lang/String;ILcom/android/launcher3/icons/IconProvider$ThemeData;)Lcom/android/launcher3/icons/ClockDrawableWrapper;

    move-result-object v1

    .line 131
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 132
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 133
    sget-boolean v2, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 134
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 135
    .local v2, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 137
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconProvider$ThemeData;->loadPaddedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    .line 141
    .end local v2    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    :cond_2
    return-object v1
.end method

.method static synthetic lambda$getIcon$0(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p1, "iconDpi"    # I

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadActivityInfoIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "density"    # I

    .line 149
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 150
    .local v0, "iconRes":I
    const/4 v1, 0x0

    .line 152
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 156
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 157
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 160
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    :cond_1
    return-object v1
.end method

.method private loadCalendarDrawable(ILcom/android/launcher3/icons/IconProvider$ThemeData;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "iconDpi"    # I
    .param p2, "td"    # Lcom/android/launcher3/icons/IconProvider$ThemeData;

    .line 168
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 170
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    const/16 v5, 0x2080

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 174
    .local v0, "metadata":Landroid/os/Bundle;
    iget-object v5, v1, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 175
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-direct {v1, v0, v5}, Lcom/android/launcher3/icons/IconProvider;->getDynamicIconId(Landroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .local v6, "id":I
    if-eqz v6, :cond_3

    .line 178
    move/from16 v7, p1

    :try_start_1
    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 179
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    sget-boolean v9, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v9, :cond_2

    instance-of v9, v8, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    .line 180
    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 181
    .local v9, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 182
    return-object v8

    .line 184
    :cond_0
    const-string v10, "array"

    iget-object v11, v2, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    iget v12, v2, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 185
    iget-object v10, v2, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    iget v11, v2, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResID:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 186
    .local v10, "ta":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/launcher3/icons/IconProvider;->getDay()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 187
    .local v11, "monoId":I
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    if-nez v11, :cond_1

    move-object v12, v8

    goto :goto_0

    .line 189
    :cond_1
    new-instance v12, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    new-instance v15, Lcom/android/launcher3/icons/IconProvider$ThemeData;

    iget-object v4, v2, Lcom/android/launcher3/icons/IconProvider$ThemeData;->mResources:Landroid/content/res/Resources;

    invoke-direct {v15, v4, v11}, Lcom/android/launcher3/icons/IconProvider$ThemeData;-><init>(Landroid/content/res/Resources;I)V

    .line 190
    invoke-virtual {v15}, Lcom/android/launcher3/icons/IconProvider$ThemeData;->loadPaddedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v12, v13, v14, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :goto_0
    return-object v12

    .line 193
    .end local v9    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v11    # "monoId":I
    :cond_2
    return-object v8

    .line 195
    .end local v0    # "metadata":Landroid/os/Bundle;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "id":I
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 176
    .restart local v0    # "metadata":Landroid/os/Bundle;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "id":I
    :cond_3
    move/from16 v7, p1

    .line 200
    .end local v0    # "metadata":Landroid/os/Bundle;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "id":I
    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    move/from16 v7, p1

    .line 201
    :goto_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private static parseComponentOrNull(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 236
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "cn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "iconDpi"    # I

    .line 116
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/IconProvider;Landroid/content/pm/ActivityInfo;I)V

    invoke-direct {p0, v0, p2, v1}, Lcom/android/launcher3/icons/IconProvider;->getIconWithOverrides(Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p2, "iconDpi"    # I

    .line 101
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/LauncherActivityInfo;I)V

    invoke-direct {p0, v0, p2, v1}, Lcom/android/launcher3/icons/IconProvider;->getIconWithOverrides(Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIconState()Ljava/lang/String;
    .locals 2

    .line 244
    sget v0, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    if-nez v0, :cond_0

    .line 245
    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0
.end method

.method public getSystemStateForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "systemState"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider;->mCalendar:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/icons/IconProvider;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    return-object p1
.end method

.method protected getThemeDataForPackage(Ljava/lang/String;)Lcom/android/launcher3/icons/IconProvider$ThemeData;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$getIcon$1$com-android-launcher3-icons-IconProvider(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "iconDpi"    # I

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/IconProvider;->loadActivityInfoIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 252
    new-instance v0, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/icons/IconProvider$IconChangeReceiver;-><init>(Lcom/android/launcher3/icons/IconProvider;Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)V

    return-object v0
.end method
