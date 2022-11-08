.class final Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "UncaughtExceptionPreHandlerManager_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    return-object v0
.end method
