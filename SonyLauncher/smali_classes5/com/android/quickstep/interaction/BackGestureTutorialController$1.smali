.class synthetic Lcom/android/quickstep/interaction/BackGestureTutorialController$1;
.super Ljava/lang/Object;
.source "BackGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/BackGestureTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

.field static final synthetic $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

.field static final synthetic $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 125
    invoke-static {}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->values()[Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v3, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v4, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_CANCELLED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v4}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v5, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v5}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v6, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v6}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v7, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    :goto_5
    :try_start_6
    sget-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v7, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v6

    :goto_6
    :try_start_7
    sget-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v7, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_BAD_ANGLE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v6

    :goto_7
    :try_start_8
    sget-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    sget-object v7, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_SWIPE_TOO_SHORT:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    .line 95
    :goto_8
    invoke-static {}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->values()[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    :try_start_9
    sget-object v7, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v6

    :goto_9
    :try_start_a
    sget-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    sget-object v7, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v6

    :goto_a
    :try_start_b
    sget-object v6, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    sget-object v7, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v7}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    :goto_b
    :try_start_c
    sget-object v2, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    sget-object v6, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v6}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v6

    aput v3, v2, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v2

    :goto_c
    :try_start_d
    sget-object v2, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    sget-object v3, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v2

    :goto_d
    :try_start_e
    sget-object v2, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    sget-object v3, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v3

    aput v5, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v2

    .line 81
    :goto_e
    invoke-static {}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->values()[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    :try_start_f
    sget-object v3, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    sget-object v2, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    return-void
.end method
