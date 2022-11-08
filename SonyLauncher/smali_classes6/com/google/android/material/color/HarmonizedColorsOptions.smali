.class public Lcom/google/android/material/color/HarmonizedColorsOptions;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    }
.end annotation


# instance fields
.field private final colorAttributeToHarmonizeWith:I

.field private final colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field private final colorResourceIds:[I

.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$000(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->context:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$100(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    .line 52
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$200(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 53
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$300(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;Lcom/google/android/material/color/HarmonizedColorsOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/material/color/HarmonizedColorsOptions$1;

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V

    return-void
.end method

.method public static createMaterialDefaults(Landroid/content/Context;)Lcom/google/android/material/color/HarmonizedColorsOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColorAttributes;->createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->build()Lcom/google/android/material/color/HarmonizedColorsOptions;

    move-result-object v0

    .line 44
    return-object v0
.end method


# virtual methods
.method public getColorAttributeToHarmonizeWith()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    return v0
.end method

.method public getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object v0
.end method

.method public getColorResourcesIds()[I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->context:Landroid/content/Context;

    return-object v0
.end method

.method getThemeOverlayResourceId()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
