.class synthetic Lcom/android/quickstep/AbsSwipeUpHandler$11;
.super Ljava/lang/Object;
.source "AbsSwipeUpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 991
    invoke-static {}, Lcom/android/quickstep/GestureState$GestureEndTarget;->values()[Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    :try_start_0
    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

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
    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

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
    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
