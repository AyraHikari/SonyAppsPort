.class synthetic Lcom/android/launcher3/appprediction/AppsDividerView$1;
.super Ljava/lang/Object;
.source "AppsDividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appprediction/AppsDividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$launcher3$appprediction$AppsDividerView$DividerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 160
    invoke-static {}, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->values()[Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$1;->$SwitchMap$com$android$launcher3$appprediction$AppsDividerView$DividerType:[I

    :try_start_0
    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->LINE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    invoke-virtual {v1}, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$1;->$SwitchMap$com$android$launcher3$appprediction$AppsDividerView$DividerType:[I

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    invoke-virtual {v1}, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$1;->$SwitchMap$com$android$launcher3$appprediction$AppsDividerView$DividerType:[I

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    invoke-virtual {v1}, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
