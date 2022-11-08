.class public final enum Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentContainerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

.field public static final enum TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5724
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    const-string v1, "TASKBAR_CONTAINER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    .line 5725
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    const-string v4, "PARENTCONTAINER_NOT_SET"

    invoke-direct {v1, v4, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    .line 5722
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5727
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5728
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->value:I

    .line 5729
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I

    .line 5739
    packed-switch p0, :pswitch_data_0

    .line 5742
    const/4 v0, 0x0

    return-object v0

    .line 5740
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    return-object v0

    .line 5741
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5735
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5722
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    .locals 1

    .line 5722
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5747
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;->value:I

    return v0
.end method
