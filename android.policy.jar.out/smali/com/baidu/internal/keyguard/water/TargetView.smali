.class public Lcom/baidu/internal/keyguard/water/TargetView;
.super Landroid/widget/RelativeLayout;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;,
        Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;,
        Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;,
        Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;,
        Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;,
        Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;,
        Lcom/baidu/internal/keyguard/water/TargetView$State;,
        Lcom/baidu/internal/keyguard/water/TargetView$IconState;,
        Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;,
        Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetHandlePanel"

.field public static mFixPointRatio:F

.field public static mStartTime:J


# instance fields
.field private mBatteryLevelView:Lcom/baidu/internal/keyguard/water/BatteryLevelView;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCruiseDuration:J

.field private mDX:F

.field private mDY:F

.field private mHandleLastX:I

.field private mHandleLastY:I

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mMissCallCount:I

.field private mMissCallCountView:Landroid/widget/TextView;

.field private mMissMsgCount:I

.field private mMissMsgCountView:Landroid/widget/TextView;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

.field private mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private final mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private final mStateTargetCameraHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private final mStateTargetMessageHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private final mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private final mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private final mStateTouch:Lcom/baidu/internal/keyguard/water/TargetView$State;

.field private mTargetArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

.field private mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

.field private mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

.field private mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

.field private mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x3dcccccd

    sput v0, Lcom/baidu/internal/keyguard/water/TargetView;->mFixPointRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 61
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCruiseDuration:J

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 61
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCruiseDuration:J

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 43
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 61
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCruiseDuration:J

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/water/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/TargetView;->adjustTargetIconPosition()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/internal/keyguard/water/TargetView;Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;)Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/water/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/TargetView;->vibrate()V

    return-void
.end method

.method private adjustTargetIconPosition()V
    .locals 3

    .prologue
    .line 436
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 438
    .local v1, target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->adjustTargetIconPosition(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v1           #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    :cond_0
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V
    .locals 16
    .parameter "canvas"
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 296
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXCruisePoint:F

    add-float v9, v1, v2

    .line 297
    .local v9, drawAX:F
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYCruisePoint:F

    add-float v10, v1, v2

    .line 298
    .local v10, drawAY:F
    move-object/from16 v0, p3

    iget v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move-object/from16 v0, p3

    iget v2, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXCruisePoint:F

    add-float v12, v1, v2

    .line 299
    .local v12, drawBX:F
    move-object/from16 v0, p3

    iget v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move-object/from16 v0, p3

    iget v2, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYCruisePoint:F

    add-float v13, v1, v2

    .line 300
    .local v13, drawBY:F
    const/4 v15, 0x0

    .line 301
    .local v15, theta:F
    sub-float v1, v12, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 302
    const v15, 0x3fc90fdb

    .line 306
    :goto_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    .line 307
    .local v8, drawAR:F
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v11, v1

    .line 308
    .local v11, drawBR:F
    const/4 v14, 0x1

    .local v14, r:I
    const/4 v7, 0x1

    .line 309
    .local v7, b:I
    cmpl-float v1, v9, v12

    if-lez v1, :cond_0

    .line 310
    const/4 v14, -0x1

    .line 311
    :cond_0
    cmpl-float v1, v10, v13

    if-lez v1, :cond_1

    .line 312
    const/4 v7, -0x1

    .line 313
    :cond_1
    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v8

    int-to-float v2, v14

    mul-float/2addr v1, v2

    add-float v2, v9, v1

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v8

    int-to-float v3, v7

    mul-float/2addr v1, v3

    add-float v3, v10, v1

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v11

    int-to-float v4, v14

    mul-float/2addr v1, v4

    sub-float v4, v12, v1

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v1, v11

    int-to-float v5, v7

    mul-float/2addr v1, v5

    sub-float v5, v13, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    return-void

    .line 304
    .end local v7           #b:I
    .end local v8           #drawAR:F
    .end local v11           #drawBR:F
    .end local v14           #r:I
    :cond_2
    sub-float v1, v13, v10

    sub-float v2, v12, v9

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v15, v1

    goto :goto_0
.end method

.method private ringIntersectProcess()V
    .locals 21

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v13, v17, 0x2

    .line 444
    .local v13, radiusHandle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v14, v17, 0x2

    .line 445
    .local v14, radiusMessage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v12, v17, 0x2

    .line 446
    .local v12, radiusCamera:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v15, v17, 0x2

    .line 447
    .local v15, radiusPhone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v16, v17, 0x2

    .line 448
    .local v16, radiusUnlock:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 449
    .local v2, a:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 450
    .local v3, b:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 451
    .local v6, distanceMessage:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 452
    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 453
    .local v4, distanceCamera:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 454
    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 455
    .local v8, distancePhone:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 456
    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 457
    .local v10, distanceUnlock:D
    add-int v17, v14, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v6, v17

    if-gez v17, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    .line 470
    :goto_0
    return-void

    .line 459
    :cond_0
    add-int v17, v12, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v4, v17

    if-gez v17, :cond_1

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    goto :goto_0

    .line 461
    :cond_1
    add-int v17, v16, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v10, v17

    if-gez v17, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    goto :goto_0

    .line 463
    :cond_2
    add-int v17, v15, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v8, v17

    if-gez v17, :cond_3

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    goto :goto_0

    .line 465
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->isDraging()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    goto :goto_0

    .line 468
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 643
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x3fc0

    .line 319
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 320
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 321
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    check-cast v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 325
    .restart local v2       #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->updateCruisePosition()V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/TargetView;->adjustTargetIconPosition()V

    .line 328
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/TargetView;->ringIntersectProcess()V

    .line 330
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    const v4, 0x66ffffff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    if-eq v3, v4, :cond_5

    .line 333
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-direct {p0, p1, v3, v4}, Lcom/baidu/internal/keyguard/water/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    .line 334
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-direct {p0, p1, v3, v4}, Lcom/baidu/internal/keyguard/water/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    .line 335
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-direct {p0, p1, v3, v4}, Lcom/baidu/internal/keyguard/water/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    .line 336
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-direct {p0, p1, v3, v4}, Lcom/baidu/internal/keyguard/water/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    .line 338
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 339
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    check-cast v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 340
    .restart local v2       #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    const/4 v1, 0x0

    .line 341
    .local v1, image:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-result-object v3

    sget-object v4, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    if-ne v3, v4, :cond_3

    .line 342
    iget-object v1, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 348
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 349
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    const v4, -0x66000001

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-direct {p0, p1, v3, v2}, Lcom/baidu/internal/keyguard/water/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    .line 352
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget v3, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXCruisePoint:F

    add-float/2addr v3, v4

    iget v4, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYCruisePoint:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-result-object v3

    sget-object v4, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    if-ne v3, v4, :cond_4

    .line 344
    iget-object v1, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 345
    :cond_4
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-result-object v3

    sget-object v4, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    if-ne v3, v4, :cond_1

    .line 346
    iget-object v1, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 360
    .end local v1           #image:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 361
    const/4 v1, 0x0

    .line 362
    .restart local v1       #image:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-result-object v3

    sget-object v4, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    if-ne v3, v4, :cond_8

    .line 363
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 364
    iget-object v1, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 372
    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 373
    iget v3, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXCruisePoint:F

    add-float/2addr v3, v4

    iget v4, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYCruisePoint:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 377
    :cond_7
    iget-wide v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCruiseDuration:J

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 378
    return-void

    .line 365
    :cond_8
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-result-object v3

    sget-object v4, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    if-ne v3, v4, :cond_9

    .line 366
    iget-object v1, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 367
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 368
    :cond_9
    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-result-object v3

    sget-object v4, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    if-ne v3, v4, :cond_6

    .line 369
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
    iget-object v1, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 383
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 387
    .local v1, ea:I
    packed-switch v1, :pswitch_data_0

    .line 432
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 389
    :pswitch_0
    const/4 v3, 0x0

    .line 390
    .local v3, r:I
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v5, v5, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    .line 391
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 395
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v4, v4, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v6, v6, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    int-to-float v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v7, v7, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 396
    .local v2, handleRect:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->startDrag()V

    .line 398
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mDX:F

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mDY:F

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 393
    .end local v2           #handleRect:Landroid/graphics/RectF;
    :cond_2
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    goto :goto_1

    .line 405
    .end local v3           #r:I
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->isDraging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 406
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mDX:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mDY:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->setPosition(FF)V

    .line 408
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 412
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/TargetView;->startTargetIntentOrDismissKeyguard()Z

    move-result v4

    if-nez v4, :cond_4

    .line 413
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->endDrag()V

    .line 414
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    .line 429
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 417
    :cond_4
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/baidu/internal/keyguard/water/TargetView$1;

    invoke-direct {v5, p0}, Lcom/baidu/internal/keyguard/water/TargetView$1;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "TargetHandlePanel"

    const-string v5, "set state to idle fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getResourceData()[[F
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    aput v3, v2, v4

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    aput v3, v2, v5

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mCruiseSeed:F

    aput v3, v2, v6

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 35

    .prologue
    .line 225
    invoke-super/range {p0 .. p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/internal/keyguard/water/TargetView;->mStartTime:J

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a4e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 228
    .local v4, cameraNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a4f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 229
    .local v5, cameraPressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a56

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 230
    .local v32, phoneNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a57

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 231
    .local v9, phonePressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a52

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 232
    .local v31, messageNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a53

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 233
    .local v13, messagePressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a61

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 234
    .local v34, unlockNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a62

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 235
    .local v17, unlockPressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a50

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 236
    .local v29, handleNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a51

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 237
    .local v21, handlePressedBmp:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    const/16 v6, 0xf7

    const/16 v7, 0x13b

    sget-object v8, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 238
    new-instance v6, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    const/16 v10, 0x4e

    const/16 v11, 0x198

    sget-object v12, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-object/from16 v7, p0

    move-object/from16 v8, v32

    invoke-direct/range {v6 .. v12}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 239
    new-instance v10, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    const/16 v14, 0x134

    const/16 v15, 0x1ad

    sget-object v16, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-object/from16 v11, p0

    move-object/from16 v12, v31

    invoke-direct/range {v10 .. v16}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 240
    new-instance v14, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    const/16 v18, 0xb5

    const/16 v19, 0x21a

    sget-object v20, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-object/from16 v15, p0

    move-object/from16 v16, v34

    invoke-direct/range {v14 .. v20}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 241
    new-instance v18, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    const/16 v22, 0xb4

    const/16 v23, 0x1af

    sget-object v24, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    move-object/from16 v19, p0

    move-object/from16 v20, v29

    invoke-direct/range {v18 .. v24}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 247
    .local v33, target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->setTargetHandle(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;)V

    goto :goto_0

    .line 249
    .end local v33           #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    :cond_0
    const v2, 0x10204c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/water/BatteryLevelView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/water/BatteryLevelView;

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 254
    new-instance v22, Landroid/view/animation/RotateAnimation;

    const/high16 v23, 0x43b4

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/high16 v26, 0x3f00

    const/16 v27, 0x1

    const/high16 v28, 0x3f00

    invoke-direct/range {v22 .. v28}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/water/TargetView;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    .line 256
    const-wide/16 v2, 0x14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/internal/keyguard/water/TargetView;->mCruiseDuration:J

    .line 257
    return-void
.end method

.method public onCallMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 658
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 282
    .local v1, target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    iget-object v2, v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_0
    iget-object v2, v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, v1, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v1           #target:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 291
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    :cond_4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 293
    return-void
.end method

.method public onPowerUpdate(II)V
    .locals 3
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 662
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",plugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-eqz p2, :cond_0

    .line 664
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/water/BatteryLevelView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/BatteryLevelView;->setLevel(F)V

    .line 665
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/water/BatteryLevelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 670
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/water/BatteryLevelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/BatteryLevelView;->setLevel(F)V

    .line 668
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/water/BatteryLevelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onSmsMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 646
    iput p1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mMissMsgCount:I

    .line 647
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 627
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    if-eq v1, p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 195
    .local v0, oldState:Lcom/baidu/internal/keyguard/water/TargetView$State;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/water/TargetView$State;->leave()V

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    .line 199
    const-string v1, "TargetHandlePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/water/TargetView$State;->enter(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    .line 201
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/water/TargetView$State;->draw()V

    .line 203
    .end local v0           #oldState:Lcom/baidu/internal/keyguard/water/TargetView$State;
    :cond_1
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 630
    if-eqz p1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mVibrator:Landroid/os/Vibrator;

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public startTargetIntentOrDismissKeyguard()Z
    .locals 4

    .prologue
    .line 206
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/water/TargetView$State;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 207
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mState:Lcom/baidu/internal/keyguard/water/TargetView$State;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/water/TargetView$State;

    if-ne v2, v3, :cond_2

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 217
    const/4 v2, 0x1

    .line 220
    :goto_1
    return v2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TargetHandlePanel"

    const-string v3, "startActivity fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stopCruise()V
    .locals 2

    .prologue
    .line 673
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/TargetView;->mCruiseDuration:J

    .line 674
    return-void
.end method
