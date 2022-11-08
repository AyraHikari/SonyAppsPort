.class public Lcom/google/android/material/color/DynamicColors;
.super Ljava/lang/Object;
.source "DynamicColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;,
        Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;,
        Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;,
        Lcom/google/android/material/color/DynamicColors$Precondition;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

.field private static final DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

.field private static final SAMSUNG_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

.field private static final USE_DEFAULT_THEME_OVERLAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/R$attr;->dynamicColorThemeOverlay:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 45
    new-instance v0, Lcom/google/android/material/color/DynamicColors$1;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColors$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DEFAULT_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 54
    new-instance v1, Lcom/google/android/material/color/DynamicColors$2;

    invoke-direct {v1}, Lcom/google/android/material/color/DynamicColors$2;-><init>()V

    sput-object v1, Lcom/google/android/material/color/DynamicColors;->SAMSUNG_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v2, "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    const-string v3, "oppo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v3, "realme"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "oneplus"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v3, "vivo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v3, "xiaomi"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v3, "motorola"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v3, "itel"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v3, "tecno mobile limited"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v3, "infinix mobility limited"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v3, "hmd global"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "sharp"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v3, "sony"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v3, "tcl"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "lenovo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "lge"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v3, "google"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "robolectric"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v3, "samsung"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    .line 101
    .end local v2    # "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v1, "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    const-string v2, "asus"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "jio"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    .line 105
    .end local v1    # "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/material/color/DynamicColors$Precondition;
    .param p3, "x3"    # Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)V

    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 196
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 197
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I

    .line 206
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 207
    return-void
.end method

.method private static applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I
    .param p2, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;
    .param p3, "onAppliedCallback"    # Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 253
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    if-nez p1, :cond_1

    .line 257
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    move-result p1

    .line 259
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p2, p0, p1}, Lcom/google/android/material/color/DynamicColors$Precondition;->shouldApplyDynamicColors(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-static {p0, p1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 261
    invoke-interface {p3, p0}, Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;->onApplied(Landroid/app/Activity;)V

    .line 263
    :cond_2
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 218
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Activity;)V

    .line 219
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 220
    return-void
.end method

.method public static applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V
    .locals 5
    .param p0, "dynamicColorsOptions"    # Lcom/google/android/material/color/DynamicColorsOptions;

    .line 231
    invoke-virtual {p0}, Lcom/google/android/material/color/DynamicColorsOptions;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 232
    .local v0, "application":Landroid/app/Application;
    invoke-virtual {p0}, Lcom/google/android/material/color/DynamicColorsOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 233
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 234
    new-instance v2, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/DynamicColorsOptions;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    .line 237
    nop

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/color/DynamicColorsOptions;->getThemeOverlay()I

    move-result v2

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/color/DynamicColorsOptions;->getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;

    move-result-object v3

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/color/DynamicColorsOptions;->getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    move-result-object v4

    .line 237
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Either Application or Activity is required."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 121
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 122
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;I)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "theme"    # I

    .line 135
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 136
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "theme"    # I
    .param p2, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 182
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Application;)V

    .line 184
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p2}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 187
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 150
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>(Landroid/app/Application;)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Lcom/google/android/material/color/DynamicColorsOptions;)V

    .line 152
    return-void
.end method

.method private static getDefaultThemeOverlay(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 319
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 321
    .local v0, "dynamicColorAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 322
    .local v1, "theme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    return v1
.end method

.method public static isDynamicColorAvailable()Z
    .locals 4

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    .line 308
    return v1

    .line 310
    :cond_0
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 311
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 312
    .local v0, "deviceSupportCondition":Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;
    if-nez v0, :cond_1

    .line 313
    sget-object v2, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 315
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 277
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .line 292
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    return-object p0

    .line 295
    :cond_0
    if-nez p1, :cond_1

    .line 296
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    move-result p1

    .line 298
    :cond_1
    if-nez p1, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method
