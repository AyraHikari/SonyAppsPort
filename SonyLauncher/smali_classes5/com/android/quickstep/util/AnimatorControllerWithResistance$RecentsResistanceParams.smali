.class final enum Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
.super Ljava/lang/Enum;
.source "AnimatorControllerWithResistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/AnimatorControllerWithResistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecentsResistanceParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_OVERVIEW:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;


# instance fields
.field public final scaleMaxResist:F

.field public final scaleStartResist:F

.field public final stopScalingAtTop:Z

.field public final translationFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 51
    new-instance v7, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v1, "FROM_APP"

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v7, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 52
    new-instance v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v9, "FROM_APP_TABLET"

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 53
    new-instance v1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v16, "FROM_OVERVIEW"

    const/16 v17, 0x2

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f400000    # 0.75f

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_OVERVIEW:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 50
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->$VALUES:[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFZ)V
    .locals 0
    .param p3, "scaleStartResist"    # F
    .param p4, "scaleMaxResist"    # F
    .param p5, "translationFactor"    # F
    .param p6, "stopScalingAtTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFZ)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleStartResist:F

    .line 58
    iput p4, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleMaxResist:F

    .line 59
    iput p5, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->translationFactor:F

    .line 60
    iput-boolean p6, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->stopScalingAtTop:Z

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-object v0
.end method

.method public static values()[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->$VALUES:[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    invoke-virtual {v0}, [Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-object v0
.end method
